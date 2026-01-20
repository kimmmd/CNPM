from sqlalchemy import Column, Integer, DateTime
from infrastructure.databases.base import Base

class ProjectAssignmentModel(Base):
    __tablename__ = 'project_assignments'
    __table_args__ = {'extend_existing': True}

    assignment_id = Column(Integer, primary_key=True)
    project_id = Column(Integer, nullable=False)
    class_id = Column(Integer, nullable=False)
    assigned_at = Column(DateTime)
