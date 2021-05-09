//Throw Collision

with (other)
{
if instance_exists(baddieID) && baddieID != other.id 
{
             if (baddieID.state = states.stun  && baddieID.thrown = true) or (obj_player.state = states.superslam)
{
instance_destroy()
instance_destroy(baddieID)
instance_destroy(other)

}
}
 }
 
 

