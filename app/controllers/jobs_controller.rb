class JobsController < ApplicationController
  protect_from_forgery with: :null_session, only: [:create]
  def index
    @jobs = Job.all

    render 'jobs/index'
  end

  def create
    @job = Job.create(url: params[:url], employer_name: params[:employer_name], employer_description: params[:employer_description], job_title: params[:job_title], job_description: params[:job_description], year_of_experience: params[:year_of_experience], education_requirement: params[:education_requirement], industry: params[:industry], base_salary: params[:base_salary], employment_type_id: params[:employment_type_id])

    if @job
      render 'jobs/job' # can be omitted
    end
  end

  def show
    @job = Job.find_by(id: params[:id])

    if @job
      render 'jobs/job' # can be omitted
    end
  end

  private
  def job_params
    params.permit(employer_name).permit(:employer_description).permit(:job_title).permit(:job_description).permit(:year_of_experience).permit(:education_requirement).permit(:industry).permit(:base_salary).permt(:employment_type_id)
  end
end
