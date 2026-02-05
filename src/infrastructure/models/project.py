from sqlalchemy import Column, Integer, String, Date, Text
from infrastructure.databases.base import Base

class ProjectModel(Base):
    __tablename__ = 'projects'
    __table_args__ = {'extend_existing': True}

    project_id = Column(Integer, primary_key=True)
    title = Column(String(100), nullable=False)
    description = Column(Text)
    status = Column(String(100))
    start_date = Column(Date)
    end_date = Column(Date)
    course_id = Column(Integer, nullable=False)
    user_id = Column(Integer, nullable=False)
