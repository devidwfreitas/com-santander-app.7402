.class public Lfnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfnv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lfnt;",
        ">",
        "Ljava/lang/Object;",
        "Lfnv;"
    }
.end annotation


# instance fields
.field private a:Lfnt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfnt;

    iput-object v0, p0, Lfnu;->a:Lfnt;

    .line 22
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfnu;->a:Lfnt;

    invoke-virtual {v0}, Lfnt;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lfnt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lfnu;->a:Lfnt;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lfnu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lfnu;->a:Lfnt;

    invoke-virtual {v0, p1, p2, p3, p4}, Lfnt;->a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V

    .line 39
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lfnu;->a:Lfnt;

    invoke-virtual {v0}, Lfnt;->b()Z

    move-result v0

    return v0
.end method
