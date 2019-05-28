class GithubSerializer < ActiveModel::Serializer
  attributes :id, :repo_owner, :repo_name, :img_url, :summary, :contribution, :user_id
end
