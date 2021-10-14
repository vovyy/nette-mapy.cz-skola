<?php

namespace App\Presenters;

use App\Bootstrap;
use Nette;
use Nette\Application\UI\Form;
use Contributte\FormsBootstrap\BootstrapForm;
use App\Model\Main_model;
use Tracy\Dumper\Value;

final class PostPresenter extends Nette\Application\UI\Presenter
{
    private Nette\Database\Explorer $database;
    private Main_model $mainModel;

    public function __construct(Nette\Database\Explorer $database, Main_model $mainModel)
    {
        $this->database = $database;
        $this->mainModel = $mainModel;
    }
    protected function createComponentPostForm(): BootstrapForm
    {
        $data = $this->mainModel->get_data();
        $data_school = $this->mainModel->get_school();


        foreach ($data as $key => $data_sell) {
            $mesto[] = $data_sell->mesto;
        }
        foreach ($data as $data_sell) {
            $skola[] = $data_sell->skola;
            $obor[] = $data_sell->obor;
        }
        foreach ($data_school as $value) {
            $skola[] = $data_sell->skola;
            $obor[] = $data_sell->obor;
        }
        $mestoId = $key;


        $current_year = date('Y');
        foreach (range(1950, $current_year) as $year) {
            $rok[] = $year;
        }


        // $result_school = $this->database->fetchAll('SELECT * FROM mesto');
        // $school = $result_school;
        $form = new BootstrapForm;

        $form->addSelect('mesto', 'Město:', array_unique($mesto))
            ->setHtmlAttribute('value', $mestoId)
            ->setRequired();
        $form->addSelect('skola', 'Škola:', array_unique($skola))

            ->setRequired();
        $form->addSelect('obor', 'Obor:', array_unique($obor))
            ->setRequired();
        $form->addInteger('pocet_prijatych', 'Počet přijatých žáků:')
            ->setRequired();
        $form->addSelect('rok_prijeti', 'Rok přijetí:', array_reverse($rok))
            ->setHtmlId('datepicker')
            ->setRequired();
        $form->addInteger('geo_latt', 'Lattitude:')
            ->setRequired();
        $form->addInteger('geo_long', 'Longtitude:')

            ->setRequired();

        $form->addSubmit('send', 'Uložit a publikovat');
        $form->onSuccess[] = [$this, 'postFormSucceeded'];

        return $form;
    }
    public function postFormSucceeded(\stdClass $values): void
    {
        $postId = $this->getParameter('postId');

        $this->database->table('skola')->insert([
            'id' => $postId,
            'mesto' => $values->mesto,
            'nazev' => $values->skola,
            'geo_lat' => $values->geo_latt,
            'geo_long' => $values->geo_long
        ]);

        $this->flashMessage('Děkuji za přidání školy', 'success');
        $this->redirect('this');
    }
}
