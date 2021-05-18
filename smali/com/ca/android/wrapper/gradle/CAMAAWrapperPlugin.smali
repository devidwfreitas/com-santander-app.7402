.class public Lcom/ca/android/wrapper/gradle/CAMAAWrapperPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/gradle/api/Plugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/gradle/api/Plugin",
        "<",
        "Lorg/gradle/api/Project;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lorg/gradle/api/Project;

    invoke-virtual {p0, p1}, Lcom/ca/android/wrapper/gradle/CAMAAWrapperPlugin;->apply(Lorg/gradle/api/Project;)V

    return-void
.end method

.method public apply(Lorg/gradle/api/Project;)V
    .locals 3

    .prologue
    .line 13
    invoke-interface {p1}, Lorg/gradle/api/Project;->getTasks()Lorg/gradle/api/tasks/TaskContainer;

    move-result-object v0

    const-string v1, "maaWrapperTask"

    const-class v2, Lcom/ca/android/wrapper/gradle/CAMAAWrapperTask;

    invoke-interface {v0, v1, v2}, Lorg/gradle/api/tasks/TaskContainer;->create(Ljava/lang/String;Ljava/lang/Class;)Lorg/gradle/api/Task;

    .line 16
    return-void
.end method
