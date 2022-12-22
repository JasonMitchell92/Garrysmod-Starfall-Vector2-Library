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
function Vector2:GetLengthSqr()
    return self.x^2 + self.y^2
end

function Vector2:GetLength()
    return math.sqrt( self:getLengthSqr() )
end

function Vector2:GetNormalized()
    local length = self.getLength()
    return Vector2:new(self.x / length, self.y / length)
end

-- useful functions
function Vector2:GetDistanceSqr(other)
    return (other.x - self.x)^2 + (other.y - self.y)^2
end

function Vector2:GetDistance(other)
    return math.sqrt( self:getDistanceSqr(other) )
end

function Vector2:GetDot(other)
    return self.x * other.x + self.y * other.y
end
