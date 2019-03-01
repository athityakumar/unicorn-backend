class Api::V1::SessionsController < Api::V1::BaseController
  def create
    user = User.new(name: session_params['name'], email: session_params['email'], password: session_params['password'])
    print(user.id)
    if user.save
      render json: user
    else
      raise user
    end
  end

  def fetch
    user = User.find_by_email(session_params[:email])
    if user.authenticate(session_params[:password])
      print(user.name)
      render json: user
    else
      raise "No such user"
    end
  end

  def index
    users = User.all
    render json: users
  end

  # def create
  #   respond_with :api, :v1, Item.create(item_params)
  # end

  # def destroy
  #   respond_with Item.destroy(params[:id])
  # end

  # def update
  #   item = Item.find(params["id"])
  #   item.update_attributes(item_params)
  #   respond_with item, json: item
  # end

  private

  def session_params
    # print(request.query_parameters)
    # print(params)
    # print(params.to_s)

    params.require('session').permit('name', 'email', 'password')
    # print(params)
    # params.permit(:name, :email, :password)
  end
end