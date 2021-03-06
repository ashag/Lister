require 'spec_helper' 

describe ListsController do

  # describe "GET 'index" do
  #   let(:user_all) 
  #   get :index 
  #   expect(assigns(:list_all).
  # end 

  describe "GET 'new' " do
    it 'is successful' do 
      get :new
      expect(response).to be_successful
    end

    # it 'will only render form for signed in user' do 
      

  end

  describe "POST 'create' " do

    context 'with valid attributes' do 
      let(:valid_list) { { name: 'To do'} }

      it 'is a redirect' do 
        post :create, list: valid_list
        expect(assigns(:valid_list)).to redirect_to(lists_path)
      end

      it 'assigns user as instance of User' do 
        post :create, list: valid_list
        expect(assigns(:list)).to be_an_instance_of(List)
      end 
    end

    context 'with invalid attributes' do
      let(:invalid_list) { { name: ' '} }

      it 'renders the new template' do 
        post :create, list: invalid_list
        expect(response).to render_template :new
      end

      it 'flashes error notice' do 
        post :create, list: invalid_list
        expect(flash[:notice]).to include 'list must have a name'
      end
    end
  end
end


