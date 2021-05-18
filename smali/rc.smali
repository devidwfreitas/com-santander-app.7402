.class public Lrc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private b:Lqz;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "group"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lrc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lrc;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public a(Lqz;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lrc;->b:Lqz;

    .line 30
    return-void
.end method

.method public b()Lqz;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lrc;->b:Lqz;

    return-object v0
.end method
