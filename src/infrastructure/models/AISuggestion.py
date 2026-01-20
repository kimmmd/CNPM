from sqlalchemy import Column, Integer, Text, DateTime
from infrastructure.databases.base import Base

class AISuggestionModel(Base):
    __tablename__ = 'ai_suggestions'
    __table_args__ = {'extend_existing': True}

    suggestion_id = Column(Integer, primary_key=True)
    content = Column(Text)
    created_at = Column(DateTime)
    project_id = Column(Integer, nullable=False)
    group_id = Column(Integer, nullable=False)
