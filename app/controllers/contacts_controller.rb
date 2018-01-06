class ContactsController < ApplicationController
    #アクションはnewとcreate
    #newアクションでフォームを作成し、createで保存。
    #保存したらnewアクションにredirectする。
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
          redirect_to new_contact_path, notice: '登録しました！'
        else
          render :new if @contact.invalid?
        end
    end

    private
  
    def contact_params
        params.require(:contact).permit(:name, :email, :content)
    end

end
