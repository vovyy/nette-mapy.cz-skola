<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use App\Model\Main_model;

final class HomepagePresenter extends Nette\Application\UI\Presenter
{
    private Main_model $mainModel;

    public function __construct(Main_model $mainModel)
    {
        $this->mainModel = $mainModel;
    }

    public function renderDefault(): void
    {
        $this->template->data = $this->mainModel
            ->get_data();
    }
}
