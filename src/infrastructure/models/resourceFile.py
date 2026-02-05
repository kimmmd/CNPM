from sqlalchemy import Column, Integer, String, DateTime
from infrastructure.databases.base import Base

class ResourceFileModel(Base):
    __tablename__ = 'resource_files'
    __table_args__ = {'extend_existing': True}

    file_id = Column(Integer, primary_key=True)
    file_name = Column(String(255))
    file_path = Column(String(255))
    file_type = Column(String(100))
    uploaded_at = Column(DateTime)
    group_id = Column(Integer)
    class_id = Column(Integer)
    user_id = Column(Integer)
