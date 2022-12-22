--Vector 2 class by Jasongamer

Vector2 = class('Vector2')
function Vector2:initialize(x, y)
    self.x = x
    self.y = y
end

-- basic math functions
function Vector2:__add(other)
    return Vector2:new( self.x + other.x, self.y + other.y)
end

function Vector2:__sub(other)
    return Vector2:new( self.x - other.x, self.y - other.y)
end

function Vector2:__div(other)
    return Vector2:new( self.x / other.x, self.y / other.y)
end

function Vector2:__mul(other)
    return Vector2:new( self.x * other.x, self.y * other.y)
end

-- useful functions
function Vector2:getLengthSqr()
    return self.x^2 + self.y^2
end

function Vector2:getLength()
    return math.sqrt( self:getLengthSqr() )
end

function Vector2:getNormalized()
    local length = self.getLength()
    return Vector2:new(self.x / length, self.y / length)
end

-- useful functions
function Vector2:getDistanceSqr(other)
    return (other.x - self.x)^2 + (other.y - self.y)^2
end

function Vector2:getDistance(other)
    return math.sqrt( self:getDistanceSqr(other) )
end

function Vector2:getDot(other)
    return self.x * other.x + self.y * other.y
end
