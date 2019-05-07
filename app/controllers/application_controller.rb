class ApplicationController < ActionController::API
# before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'soymates')
  end

  def decode_token
    if auth_header
      token = auth_header.split(' ')[1]
    begin
      JWT.decode(token, 'soymates', true, algorithm: 'HS256')
    rescue JWT::DecodeError
      nil
    end
  end
  end

  def current_user
    if decode_token
      user_id = decode_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def authorized
    render json: {message: 'Please Log-in'},
    status: :unauthorized unless logged_in
  end

  def logged_in
    !!current_user
  end

  def auth_header
    request.headers['Authorization']
  end

end
