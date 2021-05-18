.class public final Lnmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnnb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnnb",
        "<TM;>;"
    }
.end annotation

.annotation build Lnlv;
.end annotation


# instance fields
.field private final a:Lnna;

.field private final b:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnna;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnna;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnna;

    iput-object v0, p0, Lnmp;->a:Lnna;

    .line 49
    invoke-static {p2}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    iput-object v0, p0, Lnmp;->b:Ljava/lang/annotation/Annotation;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lnmp;->a:Lnna;

    invoke-interface {v0}, Lnna;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnmp;->a:Lnna;

    invoke-interface {v0}, Lnna;->b()V

    .line 65
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnmp;->a:Lnna;

    invoke-interface {v0}, Lnna;->c()V

    .line 70
    return-void
.end method

.method public d()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lnmp;->b:Ljava/lang/annotation/Annotation;

    return-object v0
.end method
