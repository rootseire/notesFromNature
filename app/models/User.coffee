Spine = require('spine')
Collection = require('models/Collection')

class User extends Spine.Model
  @configure 'User', 'id', 'name', 'key', 'collection_ids', 'avatar'
  
  @current:->
    User.first()

  seenCollection:(collection)=>
    collections? and collection_ids.index_of(collection.id)

module.exports = User