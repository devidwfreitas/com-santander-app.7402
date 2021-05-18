.class public Lcom/ca/mdo/CaMDOException;
.super Ljava/lang/RuntimeException;
.source "CaMDOException.java"


# instance fields
.field private code:Lcom/ca/mdo/CaMDOError;


# direct methods
.method constructor <init>(Lcom/ca/mdo/CaMDOError;)V
    .locals 1
    .param p1, "code"    # Lcom/ca/mdo/CaMDOError;

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/ca/mdo/CaMDOError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/ca/mdo/CaMDOException;->code:Lcom/ca/mdo/CaMDOError;

    .line 16
    return-void
.end method

.method constructor <init>(Lcom/ca/mdo/CaMDOError;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Lcom/ca/mdo/CaMDOError;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/ca/mdo/CaMDOError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-object p1, p0, Lcom/ca/mdo/CaMDOException;->code:Lcom/ca/mdo/CaMDOError;

    .line 21
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ca/mdo/CaMDOException;->code:Lcom/ca/mdo/CaMDOError;

    invoke-virtual {v0}, Lcom/ca/mdo/CaMDOError;->getCode()I

    move-result v0

    return v0
.end method
