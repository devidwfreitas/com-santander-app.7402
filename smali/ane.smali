.class public Lane;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lanf;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lanf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lane;->a:Lanf;

    .line 14
    iput-object p2, p0, Lane;->b:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lanf;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lane;->a:Lanf;

    return-object v0
.end method

.method public a(Lanf;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lane;->a:Lanf;

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lane;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lane;->b:Ljava/lang/String;

    return-object v0
.end method
