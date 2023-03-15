class Api::Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    login_success && return if resource.persisted?


    # login_failure
  end

  def login_success
    render json: {
      status: '00',
      message: 'Logged in successfully'
      # data: UserSerializer.new(resource).serializable_hash[:data]
      # [:attributes]
    }
  end

  def login_failure
    render json: {
      status: '01',
      message: 'Login failure, try again!'
    }
  end
  
  def respond_to_on_destroy
    log_out_success && return if current_api_user

    log_out_failure
  end

  def log_out_success
    render json: { message: 'You are logged out.' }, status: :ok
  end

  def log_out_failure
    render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
  end
end
