.class Landroid/support/transition/TransitionSetPort$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/transition/TransitionSetPort;

.field final synthetic val$nextTransition:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSetPort;Landroid/support/transition/TransitionPort;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/transition/TransitionSetPort$1;->this$0:Landroid/support/transition/TransitionSetPort;

    iput-object p2, p0, Landroid/support/transition/TransitionSetPort$1;->val$nextTransition:Landroid/support/transition/TransitionPort;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$1;->val$nextTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->runAnimators()V

    .line 203
    invoke-virtual {p1, p0}, Landroid/support/transition/TransitionPort;->removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 204
    return-void
.end method
