.class Lfsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lfsk;


# direct methods
.method constructor <init>(Lfsk;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lfsl;->a:Lfsk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lfsl;->a:Lfsk;

    invoke-static {v0}, Lfsk;->a(Lfsk;)Lfso;

    move-result-object v0

    invoke-interface {v0}, Lfso;->a()V

    .line 51
    return-void
.end method
