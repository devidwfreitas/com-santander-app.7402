.class public abstract Lmef;
.super Lmee;
.source "SourceFile"

# interfaces
.implements Lmdq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item:",
        "Lmef",
        "<***>;VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lmee",
        "<TItem;TVH;>;",
        "Lmdq",
        "<TModel;TItem;TVH;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lmee;-><init>()V

    .line 22
    iput-object p1, p0, Lmef;->a:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModel;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lmef;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lmdq;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lmef;->e(Ljava/lang/Object;)Lmef;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lmef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)",
            "Lmef",
            "<***>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lmef;->e(Ljava/lang/Object;)Lmef;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lmef;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)",
            "Lmef",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lmef;->a:Ljava/lang/Object;

    .line 36
    return-object p0
.end method
