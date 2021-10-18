class ApplicationController < ActionController::API

    before_action :authorized, only: [:create]

    def encode_token(payload)
      JWT.encode(payload, "put password here")
    end

    def auth_header
      request.headers['Authorization']
    end

    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        begin
          JWT.decode(token, "put your password here", true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end

    def current_user
      if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
        # TODO: test error, potentially switch to find(params: id: user_id) to explicitly communicate AcitveReocrd error
      end
    end

    def logged_in?
      !!current_user
    end

    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end

end
