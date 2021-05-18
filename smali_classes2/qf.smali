.class Lqf;
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
    .line 340
    iput-object p1, p0, Lqf;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lqf;->a:Lpc;

    invoke-static {v0}, Lpc;->C(Lpc;)V

    .line 344
    return-void
.end method
