.class public Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;
.super Ljava/lang/Object;
.source "CAMobileDevOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mdo/CAMobileDevOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomerFeedback"
.end annotation


# instance fields
.field public sessionEnd:J

.field public sessionIdentifier:Ljava/lang/String;

.field public sessionStart:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 2
    .param p1, "sessionStart"    # J
    .param p3, "sessionEnd"    # J
    .param p5, "sessionIdentifier"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 2131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2127
    iput-wide v0, p0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionStart:J

    .line 2128
    iput-wide v0, p0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionEnd:J

    .line 2129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionIdentifier:Ljava/lang/String;

    .line 2132
    iput-wide p3, p0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionEnd:J

    .line 2133
    iput-wide p1, p0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionStart:J

    .line 2134
    iput-object p5, p0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionIdentifier:Ljava/lang/String;

    .line 2135
    return-void
.end method
