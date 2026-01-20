from sqlalchemy import Column, Integer, String
from infrastructure.databases.base import Base

class ClassModel(Base):
    __tablename__ = 'classes'
    __table_args__ = {'extend_existing': True}

    class_id = Column(Integer, primary_key=True)
    year = Column(String(20))
    semester = Column(String(20))
    course_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)
