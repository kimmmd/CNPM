from sqlalchemy import Column, Integer, String, Text
from infrastructure.databases.base import Base

class CourseModel(Base):
    __tablename__ = 'courses'
    __table_args__ = {'extend_existing': True}

    course_id = Column(Integer, primary_key=True)
    code = Column(String(100), nullable=False)
    title = Column(String(100), nullable=False)
    description = Column(Text)
    department_id = Column(Integer, nullable=False)
