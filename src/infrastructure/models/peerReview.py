from sqlalchemy import Column, Integer, String, DateTime
from infrastructure.databases.base import Base
from datetime import datetime


class PeerReviewModel(Base):
    __tablename__ = "peer_reviews"
    __table_args__ = {"extend_existing": True}

    peer_review_id = Column(Integer, primary_key=True)

    reviewer_id = Column(Integer, nullable=False)
    reviewee_id = Column(Integer, nullable=False)
    submission_id = Column(Integer, nullable=False)

    score = Column(Integer, nullable=False)
    comment = Column(String(500), nullable=True)

    created_at = Column(DateTime, default=datetime.utcnow)
