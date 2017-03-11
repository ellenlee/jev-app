class Admin::SectionsController < Admin::AdminController
  before_action :set_track

  def index
    @sections = Section.all

    if params[:id]
      set_section
    else
      @section = @track.sections.new
    end
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to admin_track_sections_path(@track)
      flash[:notice] = "新增成功！"
    else
      render 'admin/sections#index'
    end
  end

  def update
    set_section

    if @section.update(section_params)
      redirect_to admin_track_sections_path(@track)
      flash[:notice] = "修改成功！"
    else
      render 'admin/sections#index'
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to admin_track_sections_path(@track)
  end


  private

  def section_params
    params.require(:section).permit(:name, :track_id)
  end

  def set_track
    @track = Track.find(params[:track_id])
  end

  def set_section
    @section = @track.sections.find(params[:id])
  end
end