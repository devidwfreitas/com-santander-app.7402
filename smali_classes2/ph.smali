.class Lph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lph;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lph;->a:Lpc;

    invoke-static {v0}, Lpc;->J(Lpc;)V

    .line 491
    return-void
.end method
