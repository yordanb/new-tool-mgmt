enum ViewState {
  idle, // The default or inactive state.
  loading, // Indicates a process is ongoing (e.g., fetching data).
  hideLoading, // Indicates a process is ongoing (e.g., fetching data).
  error, // An error occurred.
  success, // A process was successful.
  createSuccess, // A process was successful.
  updateSuccess, // A process was successful.
  deleteSuccess, // A process was successful.
  failed, // A process failed.
  empty, // A process returned no data.
  data, // A process returned data.
  noData, // A process returned no data.
  entirePageLoading, // Indicates a process is ongoing (e.g., fetching data).
  entirePageReady, // Indicates a process is ongoing (e.g., fetching data).
}

enum FullViewState {
  idle,
  loading,
  ready,
  error,
  redirect,
}

enum ListViewItemState {
  loading,
  loadMoreLoading,
  ready,
}
