class User < ApplicationRecord
    has_secure_password
    has_many :votes

    # https://stackoverflow.com/questions/2370015/regular-expression-for-password-validation
    PASSWORD_REGEX = /\A^(?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9]{7,}$\z/
    # https://stackoverflow.com/questions/742451/what-is-the-simplest-regular-expression-to-validate-emails-to-not-accept-them-bl#742588
    EMAIL_REGEX = /\A^[^@\s]+@[^@\s\.]+\.[^@\.\s]+$\z/
    
    validates :password, :presence => true, confirmation: true, length: { minimum: 7 }, format: { with: PASSWORD_REGEX }
    validates :email, presence: true, format: { with: EMAIL_REGEX }
end
