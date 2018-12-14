class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  def index
    @people = Person.order("first_name desc").all
  end

  def create
    @person = Person.new(person_params)
    
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new 
    @person = Person.new
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def person_params
    params.require(:person).permit(:first_name,
                                   :last_name,
                                   :email, 
                                   :job,
                                   :bio, 
                                   :gender, 
                                   :birthdate, 
                                   :picture, 
                                   :company_id,
                                   company_attributes: [:id, :name, :location, :business_description])
  
  end
end
