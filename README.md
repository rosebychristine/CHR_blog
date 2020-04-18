# DailyStory Blog<br>
![FrontPageImage](https://github.com/rosebychristine/CHR_blog/blob/master/da8138a5a0394eafd91ceb9f066c0755.png)<br>


## Overview<br>
If you logged in to this blog, you can write a post and add a picture. Also, if you liked other user's post, you can press the like button on that page.<br>

概要<br>
このブログアプリは、ログインとログアウトができ、投稿や一枚の写真の貼り付けと良いね機能が備わっています。<br>


## Production environment<br>
* What I used to make this  
Heroku deployment/SQL/Ruby/Ruby on Rails/HTML/Scss<br>

開発環境は、Heroku//SQL/Ruby/Ruby on Rails/HTML/Scssを使用しました。

## Background of this app<br>
My name is Christine and I am bigginer who goes to programming school.  
First of all, I did not made this app from scratch.
I added and chenged several functions from the school carriculum.<br>


* Down below are what I added from the curriculum app.  
 Like button / Background picture(Photo by me) / Posted date / Color and arrengement<br>
* Please go check the down below link to see the app.<br>
 https://chrblog.herokuapp.com/ <br>

制作背景<br>
次のステップアップをする為に、まず簡単なことから始めようと考え、こっちらのブログを作成しました。<br>
こちらはプログラミングスクールのカリキュラムで作成したブログアプリに新たな機能をつけて変化させたものです。<br> 
追加機能としては、良いね機能・写真を投稿する機能・背景を自分が撮影したものに変更・見た目や名前の変更などです。<br>
またさらに機能を追加したいと考えており、良いね機能の自動化や写真の複数枚投稿とコメント機能を追加できたらなと考えております。<br>

* 下記の[url](https://chrblog.herokuapp.com/)を押していただくとブログアプリに飛ぶことができます。<br>
https://chrblog.herokuapp.com/

## DataBase / DB設計 <br>

### users Table
|Column|Type|Option|
|------|----|-------|
|title|string|null: false, unique: true|
|content|string|null: false|
|image|string|null: false|  

#### Association  
- has_many :posts  
- has_many :likes

### Posts Table
|Column|Type|Option|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false|

#### Association  
- belongs_to :user
- has_many  :likes, dependent: :destroy


### Likes Table
|Column|Type|Option|
|------|----|-------|
|user_id|||
|post_id|||

#### Association  
- belongs_to :user
- belongs_to :post

### Images Table
|Column|Type|Option|
|------|----|-------|
|image_url|text|null: false|
|post_id|references|null: false <br> foreign_key: true|

#### Association  
- belongs_to :post  

