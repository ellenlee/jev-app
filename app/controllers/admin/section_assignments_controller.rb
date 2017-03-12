class Admin::SectionAssignmentsController < Admin::AdminController
  before_action :set_section

  def create
    @assignment = @section.assignments.new(assignment_params)

    if @assignment.save
      redirect_to admin_section_path(@section)
      flash[:notice] = "新增作業：#{@assignment.name}"
    else
      render 'admin/sections#show'
    end
  end

  def update
    set_assignment

    if @assignment.update(assignment_params)
      redirect_to admin_section_path(@section)
      flash[:notice] = "修改成功"
    else
      render 'admin/sections#index'
    end
  end

  def destroy
    set_assignment
    @assignment.destroy

    redirect_to admin_section_path(@section)
    flash[:alert] = "刪除 #{@assignment.name}"
  end

  private
  def assignment_params
    params.require(:assignment).permit(:name, :duedate, :is_opensource)
  end

  def set_section
    @section = Section.find(params[:section_id])
  end

  def set_assignment
    @assignment = Assignment.find(params[:id])
  end
end
