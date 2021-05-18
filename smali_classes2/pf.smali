.class Lpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lpf;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lpf;->a:Lpc;

    check-cast p1, Landroid/widget/EditText;

    invoke-static {v0, p1, p2}, Lpc;->a(Lpc;Landroid/widget/EditText;Z)V

    .line 463
    return-void
.end method
