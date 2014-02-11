require "spec_helper"

describe TodosController do 

	describe "Get new" do

		before (:each) do
			@todo=mock_model("Todo")
			allow(Todo).to receive(:new).and_return(@todo)
		end

		it "should assign @todo" do
			get :new
			expect(assigns(:todo)).to eq(@todo)
		end

		it "should render :new template" do
			get :new
			expect(response).to render_template("new")
		end
	end

	describe "POST create" do

		before (:each) do
			todo=mock_model("Todo")
			expect(Todo).to receive(:create).with({"title" => "get something done!"})
		end

		it "should create a Todo" do
			post :create, {todo: {title:"get something done!"}}
		end

		it "should redirect_to '/todos/new'" do
			post :create, {todo: {title:"get something done!"}}
			expect(response).to redirect_to("/todos/new")
		end

	end

end