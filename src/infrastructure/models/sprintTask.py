from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from infrastructure.databases.base import Base
from datetime import datetime


class SprintTaskModel(Base):
    __tablename__ = "sprint_tasks"
    __table_args__ = {"extend_existing": True}

    sprint_task_id = Column(Integer, primary_key=True)

    title = Column(String(255), nullable=False)
    description = Column(String(500), nullable=True)
    status = Column(String(50), nullable=False)

    start_date = Column(DateTime, nullable=False)
    end_date = Column(DateTime, nullable=False)

    created_at = Column(DateTime, default=datetime.utcnow)
