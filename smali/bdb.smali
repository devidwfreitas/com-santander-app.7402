.class public Lbdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbao;

.field private final c:Lbao;

.field private final d:Lbbr;


# direct methods
.method constructor <init>(Ljava/lang/String;Lbao;Lbao;Lbbr;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbdb;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lbdb;->b:Lbao;

    .line 25
    iput-object p3, p0, Lbdb;->c:Lbao;

    .line 26
    iput-object p4, p0, Lbdb;->d:Lbbr;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Layt;

    invoke-direct {v0, p1, p2, p0}, Layt;-><init>(Lawu;Lbdy;Lbdb;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbdb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbao;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbdb;->b:Lbao;

    return-object v0
.end method

.method public c()Lbao;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbdb;->c:Lbao;

    return-object v0
.end method

.method public d()Lbbr;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbdb;->d:Lbbr;

    return-object v0
.end method
