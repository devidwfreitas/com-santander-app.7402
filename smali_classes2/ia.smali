.class public Lia;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    iput-object p1, p0, Lia;->a:Ljava/lang/Integer;

    .line 17
    iput-object p2, p0, Lia;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lis;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lis;

    iget-object v1, p0, Lia;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lia;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lis;-><init>(ILjava/lang/String;)V

    .line 22
    return-object v0
.end method
