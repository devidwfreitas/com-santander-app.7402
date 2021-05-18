.class public Lcom/ca/android/wrapper/WrapperStatusBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private propChangeSupp:Ljava/beans/PropertyChangeSupport;

.field private wrappingStatus:Ljava/lang/String;

.field private wrappingStep:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->propChangeSupp:Ljava/beans/PropertyChangeSupport;

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->propChangeSupp:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 43
    return-void
.end method

.method public getWrappingStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->wrappingStatus:Ljava/lang/String;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->propChangeSupp:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 48
    return-void
.end method

.method public setWrappingStatus(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->propChangeSupp:Ljava/beans/PropertyChangeSupport;

    const-string v1, "wrappingStatus"

    iget-object v2, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->wrappingStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->wrappingStatus:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setWrappingStep(Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->propChangeSupp:Ljava/beans/PropertyChangeSupport;

    const-string v1, "wrappingStep"

    iget-object v2, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->wrappingStep:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v0, v1, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/ca/android/wrapper/WrapperStatusBean;->wrappingStep:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    .line 37
    return-void
.end method
