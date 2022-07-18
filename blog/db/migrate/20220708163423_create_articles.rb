class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t| #생성자. articles를 t라는 변수를 통해 객체 생성.
      t.string :title
      t.text :body

      t.timestamps  #rails에서 자동으로 만들어줌. created_at , updated_at함수를 지원함.
    end
  end
end
