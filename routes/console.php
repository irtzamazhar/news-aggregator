<?php

use Illuminate\Support\Facades\Artisan;

Schedule::command('fetch:news')->hourly();
