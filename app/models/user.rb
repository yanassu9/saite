class User < ApplicationRecord
    # 名前は15文字以下
    validates :name, presence: true, length: {maximum: 15}
    
    VAILD_EMAIL_REGEX = /\A[\w+-.]+@[a-z\d\-.]+.[a-z]+\z/i
    validates :email, presence: true, format: {with:  VAILD_EMAIL_REGEX}
    
    has_secure_password
    VALID_PASWAAD_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\z/
end
