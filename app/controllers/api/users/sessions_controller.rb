class Api::Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    login_success && return if resource.persisted?

    login_failure
  end

  def login_success
    render json: {
      status: '00',
      message: 'Logged in sucessfully.',
      data: UserSerializer.new(current_api_user).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def login_failure
    render json: {
      status: '04',
      message: "Logged in failure. #{resource.errors.full_messages.to_sentence}",
    }, status: :unauthorized
  end
  
  def respond_to_on_destroy
    if current_api_user
      render json: {
        status: '00',
        message: "logged out successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end

  def log_out_success
    render json: { message: 'You are logged out.' }, status: :ok
  end

  def log_out_failure
    render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
  end
end
