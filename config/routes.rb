Rails.application.routes.draw do
devise_for :users
  root 'tweets#index'                        #

  get  'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
  delete 'tweets/:id' =>  'tweets#destroy'   #ツイート削除機能
  get   'tweets/:id/edit'  =>  'tweets#edit' #ツイート編集画面
  patch 'tweets/:id'   =>  'tweets#update'   #ツイート更新機能

end