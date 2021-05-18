.class Lbts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbtp;


# direct methods
.method constructor <init>(Lbtp;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lbts;->a:Lbtp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lbts;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->b()V

    .line 161
    return-void
.end method
