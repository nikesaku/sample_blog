class Contact < ApplicationRecord
    #制限事項は、内容が空ではない（1文字以上）かつ140文字以内
    validates :name, :email, :content, presence: true, length: { maximum: 140}
end