class Post < ApplicationRecord
	mount_uploaders :photos, PhotoUploader
end
