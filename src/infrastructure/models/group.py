from sqlalchemy import Column, Integer, String, DateTime
from infrastructure.databases.base import Base

class GroupModel(Base):
    __tablename__ = 'groups'
    __table_args__ = {'extend_existing': True}

    group_id = Column(Integer, primary_key=True)
    project_id = Column(Integer, nullable=False)
    name = Column(String(100))
    created_at = Column(DateTime)
    user_id = Column(Integer, nullable=False)
n