class Admin::SectionsController < Admin::AdminController
  before_action :set_section, only: [:show, :update, :destroy]

  def index
    @sections = Section.all

    if params[:id]
      set_section
    else
      @section = Section.new
    end
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to admin_sections_path
      flash[:notice] = "新增成功"
    else
      render 'admin/sections#index'
    end
  end

  def show
    @assignments = @section.assignments

    if params[:assignment]
      @assignment = @section.assignments.find(params[:assignment])
    else
      @assignment = Assignment.new(duedate: (DateTime.now + 3.days).to_date - 2.hours )
    end
  end

  def update
    if @section.update(section_params)
      redirect_to admin_sections_path
      flash[:notice] = "修改成功"
    else
      render 'admin/sections#index'
    end
  end

  def destroy
    @section.destroy
    redirect_to admin_sections_path
  end


  private

  def section_params
    params.require(:section).permit(:name)
  end

  def set_section
    @section = Section.find(params[:id])
  end
end