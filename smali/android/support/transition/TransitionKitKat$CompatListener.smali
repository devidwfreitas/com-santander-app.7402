.class Landroid/support/transition/TransitionKitKat$CompatListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/transition/TransitionKitKat;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionKitKat;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    .line 334
    return-void
.end method


# virtual methods
.method addListener(Landroid/support/transition/TransitionInterfaceListener;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 365
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionCancel(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 358
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionEnd(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 372
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionPause(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 379
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionResume(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 351
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionStart(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method removeListener(Landroid/support/transition/TransitionInterfaceListener;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method
