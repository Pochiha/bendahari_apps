<?php

return[

        /**************************************************************************************
          Configuration
        **************************************************************************************/
        'configuration'=>[

                  /*  Modules
                  **************************************************************************************/
                  'modules'=>[

                              'controller'=>'Configuration\Modules',
                              'view'=>'configuration.modules',
                              'name'=>'configuration.modules',
                              'layout'=>'configuration.layouts.modules',

                  ], //End Landing

        ], //End Configuration

        /**************************************************************************************
          Share
        **************************************************************************************/
        'share'=>[

                  /*  Modules
                  **************************************************************************************/
                  'modules'=>[

                              /* Dashboard
                              **************************************************************************************/
                             'dashboard'=>[

                                            'controller'=>'Share\Modules\Dashboard',
                                            'view'=>'share.modules.dashboard',
                                            'name'=>'share.modules.dashboard',

                             ], //End Dashboard

                  ], //End Module

        ], //End Share


        /**************************************************************************************
          UKM
        **************************************************************************************/
        'ukm'=>[

                  /* Modules
                  **************************************************************************************/
                  'modules'=>[

                               /* Dashboard
                               **************************************************************************************/
                               'dashboard'=>[

                                                'controller'=>'UKM\Modules\Dashboard',
                                                'view'=>'ukm.modules.dashboard',
                                                'name'=>'ukm.modules.dashboard',
                                                'layout'=>'ukm.layouts.modules.dashboard',

                                                /* Employee
                                                **************************************************************************************/
                                                'employee'=>[
                                                  'controller'=>'UKM\Modules\Dashboard\Employee',
                                                  'view'=>'ukm.modules.dashboard.employee',
                                                  'name'=>'ukm.modules.dashboard.employee',
                                                  'layout'=>'ukm.layouts.modules.dashboard.employee',
                                                ], //End Employee

                                                /* Student
                                                **************************************************************************************/
                                                // 'student'=>[
                                                //   'controller'=>'UKM\Modules\Dashboard\Student',
                                                //   'view'=>'ukm.modules.dashboard.student',
                                                //   'name'=>'ukm.modules.dashboard.student',
                                                //   'layout'=>'ukm.layouts.modules.dashboard.student',
                                                // ], //End Student

                               ],//End Dashboard

                               /* Landing
                               **************************************************************************************/
                               'landing'=>[

                                           /* BMS
                                           **************************************************************************************/
                                          'bms'=>[

                                            'controller'=>'UKM\Modules\Landing\BMS',
                                            'view'=>'ukm.modules.landing.bms',
                                            'name'=>'ukm.modules.landing.bms',
                                            'layout'=>'ukm.layouts.modules.landing.bms',

                                            ]

                               ], //End Landing Employee

                  ] //End Modules

        ], //End UKM

      ]
?>
