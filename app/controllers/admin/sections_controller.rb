class Admin::SectionsController < Admin::AdminController

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
      flash[:notice] = "新增成功！"
    else
      render 'admin/sections#index'
    end
  end

  def show
    set_section

  end

  def update
    set_section

    if @section.update(section_params)
      redirect_to admin_sections_path
      flash[:notice] = "修改成功！"
    else
      render 'admin/sections#index'
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to admin_sections_path
  end


  private

  def section_params
    params.require(:section).permit(:name, :track_id)
  end

  def set_section
    @section = Section.find(params[:id])
  end
end