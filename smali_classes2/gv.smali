.class public Lgv;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput-object p1, p0, Lgv;->a:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lgv;->a:Ljava/lang/String;

    return-object v0
.end method
