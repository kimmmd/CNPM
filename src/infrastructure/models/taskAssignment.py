from sqlalchemy import Column, Integer, DateTime, ForeignKey
from infrastructure.databases.base import Base
from datetime import datetime


class TaskAssignmentModel(Base):
    __tablename__ = "task_assignments"
    __table_args__ = {"extend_existing": True}

    task_assignment_id = Column(Integer, primary_key=True)
    completed_at = Column(DateTime)
    assigned_at = Column(DateTime, default=datetime.utcnow)
