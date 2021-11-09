<?php

use Illuminate\Database\Seeder;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin  = \App\Menu::create(['name'=>'admin']);
        $items =
            [
                [
                    'menu_id' => $admin->id,
                    'title' => 'Dashboard',
                    'url'=>NULL,
                    'icon_class' => 'ti-anchor',
                    'route' => 'dashboard',
                ],
                [
                        'menu_id' => $admin->id,
                        'url' => NULL,
                        'title' => 'Người dùng',
                        'icon_class' => 'ti-user',
                        'route' => 'users.index',
                ],
                [
                    'menu_id' => $admin->id,
                    'title' => 'Vai trò & Quyền',
                    'url' => '#',
                    'icon_class' => 'ti-key',
                    'route'=>NULL,
                    'children'=>[
                        [
                            'menu_id' => $admin->id,
                            'title' => 'Vai trò',
                            'url'=>NULL,
                            'icon_class' => NULL,
                            'route' => 'roles.index',
                        ],
                        [
                            'menu_id' => $admin->id,
                            'title' => 'Quyền',
                            'url'=>NULL,
                            'icon_class' => NULL,
                            'route' => 'permissions.index',
                        ]
                    ]
                ],
                [
                    'menu_id' => $admin->id,
                    'title' => 'Menu Builder',
                    'url'=>NULL,
                    'icon_class' => 'ti-list',
                    'parent_id' => 0,
                    'route' => 'menus.index',
                ],
            ];
        foreach ($items as $item){
            if(!array_key_exists('children',$item)){
                \App\MenuItem::create($item);
            }else{
                $parent = \App\MenuItem::create(['menu_id'=>$item['menu_id'],'title'=>$item['title'],'icon_class'=>$item['icon_class'],'url'=>$item['url'],'route'=>$item['route']]);
                foreach ($item['children'] as $child){
                    \App\MenuItem::create(['menu_id'=>$child['menu_id'],'title'=>$child['title'],'icon_class'=>$child['icon_class'],'route'=>$child['route'],'url'=>$child['url'],'parent_id'=>$parent->id]);
                }
            }
        }
    }
}
